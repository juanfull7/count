<?php 
session_start();
require_once '../conexion/conexion.php';
if ($_SESSION['ident']) {
	echo "";
	$sql = "SELECT * FROM numeraciones,usuarios WHERE usuarios.identificacion=numeraciones.identificacion_usuario and numeraciones.identificacion_usuario in(?)";
	$statement = $pdo->prepare($sql);
	$statement->execute(array($_SESSION['ident']));
	$result_plazos = $statement->fetchAll();
    
   
    
    
    if($_POST){
        $sql_insert = "insert into numeraciones(nombre_numeracion,preferida,estado,resolucion,prefijo,siguiente_numero,identificacion_usuario) values(?,?,?,?,?,?,?)";
            $statement_insert = $pdo->prepare($sql_insert);
            $statement_insert->execute(array($_POST['name'],$_POST['dias'],$_SESSION['ident']));
            if($statement_insert){
                echo "
                    <script>
                        alert('numeracion agregada');
                        location.href = ('numeracion.php');
                    </script>
                ";
            }
    }
    if (@$_GET['actualizar']) {
         #consulta para traer datos de plazo por id_plazo
    	$sql_update = "SELECT * FROM numeraciones,usuarios WHERE usuarios.identificacion=numeraciones.identificacion_usuario and numeraciones.identificacion_usuario in(?) and numeraciones.id_numeracion in(?)";
            $statement_update = $pdo->prepare($sql_update);
            $statement_update->execute(array($_SESSION['ident'],$_GET['actualizar']));
        $result_plazo_id = $statement_update->fetchAll();
    }

    $sql_n = "SELECT * FROM numeraciones_generales,usuarios WHERE usuarios.identificacion=numeraciones_generales.identificacion_usuario and numeraciones_generales.identificacion_usuario in(?) and numeraciones_generales.estado_registro='activo'";
            $statement_n = $pdo->prepare($sql_n);
            $statement_n->execute(array($_SESSION['ident']));
        $result_n = $statement_n->fetchAll();

}
else
{
	header('location: ../index.php');
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Fn Conta</title>
    <link rel="stylesheet" href="../css/reset.css">
    <link rel="stylesheet" media="(max-width: 300px)" href="../css/inicio.css">
        <link rel="stylesheet" href="../css/inicio.css">

    <link rel="shortcut icon" href="../img/imgmain/favicon-ilove.png" type="image/x-icon">
    <link rel="icon" type="image/png" href="../img/imgmain/favicon-ilove.png"/>
    <link href="https://fonts.googleapis.com/css?family=Roboto:100i,300,400,400i,700,900i" rel="stylesheet">
   <script src="../js/jquery.js"></script>
	<script type="text/javascript" src="../js/agregar_lista_debajo_nav.js"></script>
	
</head>
<body>

 <?php include('menuFreenetConfig.php');  ?>
	
	<center>
    <div>
        
            <table>
                <?php 
                if ($result_n) {
                    foreach ($result_n as $rs_n) {
                        
                   
                 ?>
                 <form action="actualizar_numeracion_general.php" method="post">
                    <tr>
                        <th>numeracion resibo de caja</th>
                        <td><input type="number" name="n_resibo_caja" value="<?php echo $rs_n['numeracion_resibo_caja'] ?>" placeholder="numeracion resibo de caja"></td>
                    </tr>
                    <tr>
                        <th>numeracion comprobante de pago</th>
                        <td><input type="number" name="n_comprobante_pago" value="<?php echo $rs_n['numeracion_comprobante_pago'] ?>" placeholder="numeracion comprobante de pago"></td>
                    </tr>
                    <tr>
                        <th>numeracion nota de credito</th>
                        <td><input type="number" name="n_nota_credito" value="<?php echo $rs_n['numeracion_nota_credito'] ?>" placeholder="numeracion nota de credito"></td>
                    </tr>
                    <tr>
                        <th>numeracion remicion</th>
                        <td><input type="number" name="n_remicion" value="<?php echo $rs_n['numeracion_remicion'] ?>" placeholder="numeracion remicion"></td>
                    </tr>
                    <tr>
                        <th>numeracion cotizacion</th>
                        <td><input type="number" name="n_cotizacion" value="<?php echo $rs_n['numeracion_cotizacion'] ?>" placeholder="numeracion cotizacion"></td>
                    </tr>
                    <tr>
                        <th>numeracion orden de compra</th>
                        <td><input type="number" name="n_orden_compra" value="<?php echo $rs_n['numeracion_orden_compra'] ?>" placeholder="numeracion orden de compra"></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><input type="submit" name="" value="Guardar Actualizar"></td>
                    </tr>
                    
                </form>
                 </table>
                <?php 
                 }
                }
                else{

                 ?>
                 <table>
                     
                    <form action="register_numeracion_general.php" method="post">
                    <tr>
                        <th>numeracion resibo de caja</th>
                        <td><input type="number" name="n_resibo_caja" value="1" placeholder="numeracion resibo de caja"></td>
                    </tr>
                    <tr>
                        <th>numeracion comprobante de pago</th>
                        <td><input type="number" name="n_comprobante_pago" value="1" placeholder="numeracion comprobante de pago"></td>
                    </tr>
                    <tr>
                        <th>numeracion nota de credito</th>
                        <td><input type="number" name="n_nota_credito" value="1" placeholder="numeracion nota de credito"></td>
                    </tr>
                    <tr>
                        <th>numeracion remicion</th>
                        <td><input type="number" name="n_remicion" value="1" placeholder="numeracion remicion"></td>
                    </tr>
                    <tr>
                        <th>numeracion cotizacion</th>
                        <td><input type="number" name="n_cotizacion" value="1" placeholder="numeracion cotizacion"></td>
                    </tr>
                    <tr>
                        <th>numeracion orden de compra</th>
                        <td><input type="number" name="n_orden_compra" value="1" placeholder="numeracion orden de compra"></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><input type="submit" name="" value="Guardar"></td>
                    </tr>
                    
                </form>

                 </table>
   
                 <?php 
                }
                  ?>
                
                
           
        </form>
    </div>


		
    <table>
            
            <div>
        <form action="update_numeracion.php?actualizado=true" method="post">
        
            <?php 
            if (@$_GET['actualizar']) {
            foreach ($result_plazo_id as $rs_numeracion) {
            ?>
           <tr>
                <th></th>
                <td class="celda-tabla">--------------------------------------------</td>
                <td class="celda-tabla">--------------------------------------------</td>
                <td class="celda-tabla">--------------------------------------------</td>
                <td class="celda-tabla">--------------------------------------------</td>
                <td class="celda-tabla">--------------------------------------------</td>
                <td class="celda-tabla">--------------------------------------------</td>
               
            </tr>
            
            <tr>
                <th>actualizar</th>
                <th><input type="hidden" name="id" value="<?php echo $_GET['actualizar']; ?>"></th>
                <td class="celda-tabla"><input type="text" name="nombre" value="<?php echo $rs_numeracion['nombre_numeracion']; ?>"></td>
                <td class="celda-tabla"><input type="text" name="preferida" value="<?php echo $rs_numeracion['preferida']; ?>"></td>
             
              <td class="celda-tabla"><input type="text" name="resolucion" value="<?php echo $rs_numeracion['resolucion']; ?>"></td>
              <td class="celda-tabla"><input type="text" name="prefijo" value="<?php echo $rs_numeracion['prefijo']; ?>"></td>
              <td class="celda-tabla"><input type="text" name="siguiente" value="<?php echo $rs_numeracion['siguiente_numero']; ?>"></td>
                <td class="celda-tabla"><input type="submit" value="actualizar"></td>
                
            </tr>
            <?php   
            }
            }

            ?>
        </form>
        </div>

    </table>
<h1>Numeracion factura de venta</h1> <br>       
        <strong id="addPlazo">nueva Numeracion factura de venta</strong>
    <div id="tablaRegisterPlazos">
        <table width="100%" width="50%">
           <form action="register_numeracion.php" method="post">
            <thead>
                <tr>
                    <th>Nombre numeracion</th>
                    <td><input type="text" name="name" placeholder="nombre"></td>
                </tr>
                <tr>
                    <th>preferida</th>
                    <td><input type="radio" name="preferida" value="si" required="">si<input type="radio" name="preferida" value="no" required="">no</td>
                    
                </tr>
                
                <tr>
                    <th>resolucion</th>
                    <td><input type="text" name="resolucion" placeholder="resolucion"></td>
                </tr>
                <tr>
                    <th>prefijo</th>
                    <td><input type="text" name="prefijo" placeholder="prefijo"></td>
                </tr>
                <tr>
                    <th>siguiente numero</th>
                    <td><input type="number" name="siguiente_numero" value="1"></td>
                </tr>
                
                <tr>
                    <td></td>
                     <td><input type="submit" value="agregar"></td>
                </tr>     
               
                			

            </thead>
        </form>
        


        </table>
       </div>
    <br><br>
	<table width="60%">
		<thead>
			<tr>
				<th>Numeracion</th>
				<th>preferida</th>
				<th>estado</th>
				<th>resolucion</th>
                <th>prefijo</th>
                <th>siguiente numero</th>
                <th>accion</th>   
                <th>accion</th>
			</tr>
		</thead>
		<tbody>
			<?php 
			if ($result_plazos) {
			
			foreach ($result_plazos as $rs_plazos) {
			?>
			<tr>
				<td class="celda-tabla"><?php echo $rs_plazos['nombre_numeracion']; ?></td>
				<td class="celda-tabla"><?php echo $rs_plazos['preferida']; ?></td>
                <td class="celda-tabla"><?php echo $rs_plazos['estado']; ?></td>
                <td class="celda-tabla"><?php echo $rs_plazos['resolucion']; ?></td>
                <td class="celda-tabla"><?php echo $rs_plazos['prefijo']; ?></td>
                <td class="celda-tabla"><?php echo $rs_plazos['siguiente_numero']; ?></td>
                
				<td class="celda-tabla"><a href="numeracion.php?actualizar=<?php echo $rs_plazos['id_numeracion']; ?>">actualizar</a></td>
				<td class="celda-tabla"><a href="eliminar_numeracion.php?eliminar=<?php echo $rs_plazos['id_numeracion']; ?>">eliminar</a></td>
			</tr>
			<?php 
			} 
		}
		else{
				
			?>
			<tr>
				<td></td>
				<td></td>
				<td>no hay numeraciones Registrados por el momento</td>
				<td></td>
				
			</tr>
			<?php
			}
			 ?>
			
		</tbody>
	</table>
	</center>
	<style>
        .celda-tabla{
            text-align: center;
        }
	</style>
    
	
	
	<footer class="foot">Copyright@ 2018 Freenet.</footer>
</div>

</body>
</html>

	
